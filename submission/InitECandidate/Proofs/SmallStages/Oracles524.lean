import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source524
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles524
def optimizedBody524_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody524_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 6), (0, 2), (8, 8), (44, 44)]

def optimizedBody524_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody524_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody524_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_2 optimizedBody524_3

def optimizedBody524_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody524_1, 524, 2)) (some 477) ([]) (some (2, optimizedBody524_4, 524, 3))

def optimizedBody524_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody524_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 5#64)

def optimizedBody524_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 4), (48, 6), (50, 0), (52, 8)]

def optimizedBody524_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (6, 48), (0, 50), (8, 52)]

def optimizedBody524_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48), (0, 50), (8, 52)]

def optimizedBody524_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_10 optimizedBody524_3

def optimizedBody524_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody524_9, 524, 4)) (some 472) ([2]) (some (2, optimizedBody524_11, 524, 5))

def optimizedBody524_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody524_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody524_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody524_14, 524, 6)) (some 138) ([2, 4, 6, 8]) (some (2, optimizedBody524_4, 524, 7))

def optimizedBody524_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 256#64)

def optimizedBody524_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody524_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody524_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody524_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody524_19, 524, 8)) (some 479) ([2]) (some (2, optimizedBody524_4, 524, 9))

def optimizedBody524_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody524_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody524_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody524_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_23 optimizedBody524_3

def optimizedBody524_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody524_22, 524, 10)) (some 492) ([2]) (some (2, optimizedBody524_24, 524, 11))

def optimizedBody524_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody524_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody524_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody524_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_27 optimizedBody524_28

def optimizedBody524_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_26 optimizedBody524_29

def optimizedBody524_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_6 optimizedBody524_30

def optimizedBody524_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_25 optimizedBody524_31

def optimizedBody524_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_2 optimizedBody524_32

def optimizedBody524_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_21 optimizedBody524_33

def optimizedBody524_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_6 optimizedBody524_34

def optimizedBody524_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_20 optimizedBody524_35

def optimizedBody524_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_2 optimizedBody524_36

def optimizedBody524_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_18 optimizedBody524_37

def optimizedBody524_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_17 optimizedBody524_38

def optimizedBody524_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_16 optimizedBody524_39

def optimizedBody524_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_6 optimizedBody524_40

def optimizedBody524_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_15 optimizedBody524_41

def optimizedBody524_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_13 optimizedBody524_42

def optimizedBody524_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_6 optimizedBody524_43

def optimizedBody524_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_12 optimizedBody524_44

def optimizedBody524_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_8 optimizedBody524_45

def optimizedBody524_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_7 optimizedBody524_46

def optimizedBody524_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_6 optimizedBody524_47

def optimizedBody524_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_5 optimizedBody524_48

def optimizedBody524_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_0 optimizedBody524_49

def oracle524 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 Flapjack.Spt.ln))
            (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 4))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 22 Flapjack.Spt.ln))))))
def optimized524 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(524, 1, optimizedBody524_50)
end InitECandidate.Proofs.SmallStages.Oracles524
