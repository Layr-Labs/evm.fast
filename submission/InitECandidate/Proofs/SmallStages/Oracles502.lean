import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source502
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles502
def optimizedBody502_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody502_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (8, 8), (6, 6), (44, 44)]

def optimizedBody502_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody502_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody502_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody502_2 optimizedBody502_3

def optimizedBody502_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody502_1, 502, 2)) (some 477) ([]) (some (2, optimizedBody502_4, 502, 3))

def optimizedBody502_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody502_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 4), (52, 0), (56, 8), (58, 6)]

def optimizedBody502_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (6, 6), (0, 2), (4, 4), (44, 44), (46, 46), (52, 52), (56, 56), (58, 58)]

def optimizedBody502_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (52, 52), (56, 56), (58, 58)]

def optimizedBody502_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody502_9 optimizedBody502_3

def optimizedBody502_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody502_8, 502, 4)) (some 477) ([]) (some (2, optimizedBody502_10, 502, 5))

def optimizedBody502_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 5#64)

def optimizedBody502_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 8), (50, 6), (52, 52), (54, 0), (56, 56), (58, 58), (60, 4)]

def optimizedBody502_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (16, 48), (14, 50), (0, 52), (10, 54), (8, 56), (6, 58), (12, 60)]

def optimizedBody502_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (4, 46), (16, 48), (14, 50), (0, 52), (10, 54), (8, 56), (6, 58), (12, 60)]

def optimizedBody502_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody502_15 optimizedBody502_3

def optimizedBody502_17 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody502_14, 502, 6)) (some 472) ([2]) (some (2, optimizedBody502_16, 502, 7))

def optimizedBody502_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44)]

def optimizedBody502_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody502_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody502_19, 502, 8)) (some 130) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody502_4, 502, 9))

def optimizedBody502_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody502_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody502_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody502_22, 502, 10)) (some 478) ([2, 4, 6, 8]) (some (2, optimizedBody502_4, 502, 11))

def optimizedBody502_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody502_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody502_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody502_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody502_26 optimizedBody502_3

def optimizedBody502_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody502_25, 502, 12)) (some 492) ([2]) (some (2, optimizedBody502_27, 502, 13))

def optimizedBody502_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody502_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody502_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody502_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody502_30 optimizedBody502_31

def optimizedBody502_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody502_29 optimizedBody502_32

def optimizedBody502_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody502_6 optimizedBody502_33

def optimizedBody502_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody502_28 optimizedBody502_34

def optimizedBody502_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody502_2 optimizedBody502_35

def optimizedBody502_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody502_24 optimizedBody502_36

def optimizedBody502_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody502_6 optimizedBody502_37

def optimizedBody502_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody502_23 optimizedBody502_38

def optimizedBody502_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody502_21 optimizedBody502_39

def optimizedBody502_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody502_6 optimizedBody502_40

def optimizedBody502_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody502_20 optimizedBody502_41

def optimizedBody502_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody502_18 optimizedBody502_42

def optimizedBody502_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody502_6 optimizedBody502_43

def optimizedBody502_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody502_17 optimizedBody502_44

def optimizedBody502_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody502_13 optimizedBody502_45

def optimizedBody502_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody502_12 optimizedBody502_46

def optimizedBody502_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody502_6 optimizedBody502_47

def optimizedBody502_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody502_11 optimizedBody502_48

def optimizedBody502_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody502_7 optimizedBody502_49

def optimizedBody502_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody502_6 optimizedBody502_50

def optimizedBody502_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody502_5 optimizedBody502_51

def optimizedBody502_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody502_0 optimizedBody502_52

def oracle502 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 22 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 0 Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln) (Flapjack.Spt.ls 4))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 3))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 22 Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 28 (Flapjack.Spt.ls 6)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 4)) (Flapjack.Spt.ls 3))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 2
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 4)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))))))
def optimized502 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(502, 1, optimizedBody502_53)
end InitECandidate.Proofs.SmallStages.Oracles502
