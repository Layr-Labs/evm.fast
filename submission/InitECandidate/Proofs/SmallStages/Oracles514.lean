import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source514
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles514
def optimizedBody514_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody514_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (4, 4), (0, 2), (6, 6), (44, 44)]

def optimizedBody514_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody514_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody514_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_2 optimizedBody514_3

def optimizedBody514_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody514_1, 514, 2)) (some 477) ([]) (some (2, optimizedBody514_4, 514, 3))

def optimizedBody514_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody514_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (50, 8), (54, 4), (56, 0), (58, 6)]

def optimizedBody514_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (6, 6), (8, 8), (44, 44), (50, 50), (54, 54), (56, 56), (58, 58)]

def optimizedBody514_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (54, 54), (56, 56), (58, 58)]

def optimizedBody514_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_9 optimizedBody514_3

def optimizedBody514_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody514_8, 514, 4)) (some 477) ([]) (some (2, optimizedBody514_10, 514, 5))

def optimizedBody514_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody514_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 4), (48, 0), (50, 50), (52, 6), (54, 54), (56, 56), (58, 58), (60, 8)]

def optimizedBody514_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (12, 46), (10, 48), (8, 50), (14, 52), (4, 54), (0, 56), (6, 58), (16, 60)]

def optimizedBody514_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (12, 46), (10, 48), (8, 50), (14, 52), (4, 54), (0, 56), (6, 58), (16, 60)]

def optimizedBody514_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_15 optimizedBody514_3

def optimizedBody514_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody514_14, 514, 6)) (some 472) ([2]) (some (2, optimizedBody514_16, 514, 7))

def optimizedBody514_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44)]

def optimizedBody514_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody514_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody514_19, 514, 8)) (some 105) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody514_4, 514, 9))

def optimizedBody514_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody514_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody514_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody514_22, 514, 10)) (some 480) ([2]) (some (2, optimizedBody514_4, 514, 11))

def optimizedBody514_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody514_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody514_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody514_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_26 optimizedBody514_3

def optimizedBody514_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody514_25, 514, 12)) (some 492) ([2]) (some (2, optimizedBody514_27, 514, 13))

def optimizedBody514_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody514_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody514_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody514_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_30 optimizedBody514_31

def optimizedBody514_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_29 optimizedBody514_32

def optimizedBody514_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_6 optimizedBody514_33

def optimizedBody514_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_28 optimizedBody514_34

def optimizedBody514_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_2 optimizedBody514_35

def optimizedBody514_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_24 optimizedBody514_36

def optimizedBody514_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_6 optimizedBody514_37

def optimizedBody514_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_23 optimizedBody514_38

def optimizedBody514_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_21 optimizedBody514_39

def optimizedBody514_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_6 optimizedBody514_40

def optimizedBody514_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_20 optimizedBody514_41

def optimizedBody514_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_18 optimizedBody514_42

def optimizedBody514_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_6 optimizedBody514_43

def optimizedBody514_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_17 optimizedBody514_44

def optimizedBody514_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_13 optimizedBody514_45

def optimizedBody514_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_12 optimizedBody514_46

def optimizedBody514_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_6 optimizedBody514_47

def optimizedBody514_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_11 optimizedBody514_48

def optimizedBody514_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_7 optimizedBody514_49

def optimizedBody514_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_6 optimizedBody514_50

def optimizedBody514_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_5 optimizedBody514_51

def optimizedBody514_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_0 optimizedBody514_52

def oracle514 : Option (Spt Nat) :=
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
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0 Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 22 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 25 Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 3)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln) 22 (Flapjack.Spt.ls 2))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 4))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 28 (Flapjack.Spt.ls 8)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))))))
def optimized514 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(514, 1, optimizedBody514_53)
end InitECandidate.Proofs.SmallStages.Oracles514
