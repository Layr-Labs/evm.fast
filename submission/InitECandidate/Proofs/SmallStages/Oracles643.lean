import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source643
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles643
def optimizedBody643_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 0)]

def optimizedBody643_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (8, 8), (10, 10), (4, 4), (12, 2), (0, 44)]

def optimizedBody643_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody643_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody643_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_2 optimizedBody643_3

def optimizedBody643_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody643_1, 643, 2)) (some 115) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody643_4, 643, 3))

def optimizedBody643_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody643_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8), (6, 6), (4, 4), (2, 12)]

def optimizedBody643_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 1#64)

def optimizedBody643_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 2)]

def optimizedBody643_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 18446744069414584321#64)

def optimizedBody643_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody643_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 4294967295#64)

def optimizedBody643_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 18446744073709551615#64)

def optimizedBody643_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16)]

def optimizedBody643_15 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 117) ([0, 2, 4, 6, 8, 10, 12, 14, 16]) (none)

def optimizedBody643_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_14 optimizedBody643_15

def optimizedBody643_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_13 optimizedBody643_16

def optimizedBody643_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_12 optimizedBody643_17

def optimizedBody643_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_11 optimizedBody643_18

def optimizedBody643_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_10 optimizedBody643_19

def optimizedBody643_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_9 optimizedBody643_20

def optimizedBody643_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_6 optimizedBody643_21

def optimizedBody643_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(8, 8), (4, 4), (2, 2), (6, 6)]

def optimizedBody643_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 12) optimizedBody643_22 optimizedBody643_23

def optimizedBody643_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 0), (46, 8), (48, 4), (50, 2), (52, 6)]

def optimizedBody643_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (0, 44), (8, 46), (4, 48), (10, 50), (6, 52)]

def optimizedBody643_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (8, 46), (4, 48), (10, 50), (6, 52)]

def optimizedBody643_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_27 optimizedBody643_3

def optimizedBody643_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody643_26, 643, 4)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody643_28, 643, 5))

def optimizedBody643_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody643_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody643_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 10)]

def optimizedBody643_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_32 optimizedBody643_20

def optimizedBody643_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_6 optimizedBody643_33

def optimizedBody643_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(8, 8), (4, 4), (10, 10), (6, 6)]

def optimizedBody643_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 2) optimizedBody643_34 optimizedBody643_35

def optimizedBody643_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody643_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody643_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_37 optimizedBody643_38

def optimizedBody643_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_6 optimizedBody643_39

def optimizedBody643_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_6 optimizedBody643_40

def optimizedBody643_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_36 optimizedBody643_41

def optimizedBody643_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_31 optimizedBody643_42

def optimizedBody643_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_30 optimizedBody643_43

def optimizedBody643_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_6 optimizedBody643_44

def optimizedBody643_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_29 optimizedBody643_45

def optimizedBody643_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_25 optimizedBody643_46

def optimizedBody643_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_13 optimizedBody643_47

def optimizedBody643_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_12 optimizedBody643_48

def optimizedBody643_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_11 optimizedBody643_49

def optimizedBody643_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_10 optimizedBody643_50

def optimizedBody643_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_9 optimizedBody643_51

def optimizedBody643_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_6 optimizedBody643_52

def optimizedBody643_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_6 optimizedBody643_53

def optimizedBody643_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_24 optimizedBody643_54

def optimizedBody643_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_8 optimizedBody643_55

def optimizedBody643_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_7 optimizedBody643_56

def optimizedBody643_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_6 optimizedBody643_57

def optimizedBody643_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_5 optimizedBody643_58

def optimizedBody643_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody643_0 optimizedBody643_59

def oracle643 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 4)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 6 Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 4)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4))))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 4)
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 1 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 5)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 5))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) (Flapjack.Spt.ls 4))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 6 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))))
def optimized643 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(643, 9, optimizedBody643_60)
end InitECandidate.Proofs.SmallStages.Oracles643
