import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source481
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles481
def optimizedBody481_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody481_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44)]

def optimizedBody481_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody481_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody481_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_2 optimizedBody481_3

def optimizedBody481_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody481_1, 481, 2)) (some 467) ([2]) (some (2, optimizedBody481_4, 481, 3))

def optimizedBody481_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody481_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (44, 44), (46, 4)]

def optimizedBody481_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (4, 4), (10, 44), (0, 46)]

def optimizedBody481_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (0, 46)]

def optimizedBody481_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_9 optimizedBody481_3

def optimizedBody481_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody481_8, 481, 4)) (some 119) ([2, 4]) (some (2, optimizedBody481_10, 481, 5))

def optimizedBody481_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody481_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody481_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 18446744073709551615#64)

def optimizedBody481_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody481_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2]

def optimizedBody481_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_15 optimizedBody481_16

def optimizedBody481_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_14 optimizedBody481_17

def optimizedBody481_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_6 optimizedBody481_18

def optimizedBody481_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody481_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody481_19 optimizedBody481_20

def optimizedBody481_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody481_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 3#64)

def optimizedBody481_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody481_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody481_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (2, 0)]

def optimizedBody481_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 8 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody481_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 10)]

def optimizedBody481_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody481_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody481_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_30 optimizedBody481_3

def optimizedBody481_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody481_29, 481, 6)) (some 465) ([2, 4]) (some (2, optimizedBody481_31, 481, 7))

def optimizedBody481_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody481_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody481_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_33 optimizedBody481_34

def optimizedBody481_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_6 optimizedBody481_35

def optimizedBody481_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_32 optimizedBody481_36

def optimizedBody481_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_28 optimizedBody481_37

def optimizedBody481_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_27 optimizedBody481_38

def optimizedBody481_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_26 optimizedBody481_39

def optimizedBody481_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_25 optimizedBody481_40

def optimizedBody481_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_24 optimizedBody481_41

def optimizedBody481_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_23 optimizedBody481_42

def optimizedBody481_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_22 optimizedBody481_43

def optimizedBody481_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_6 optimizedBody481_44

def optimizedBody481_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_6 optimizedBody481_45

def optimizedBody481_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_21 optimizedBody481_46

def optimizedBody481_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_13 optimizedBody481_47

def optimizedBody481_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_12 optimizedBody481_48

def optimizedBody481_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_6 optimizedBody481_49

def optimizedBody481_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_11 optimizedBody481_50

def optimizedBody481_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_7 optimizedBody481_51

def optimizedBody481_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_6 optimizedBody481_52

def optimizedBody481_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_5 optimizedBody481_53

def optimizedBody481_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_0 optimizedBody481_54

def oracle481 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)) 22 Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 5))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))))
def optimized481 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(481, 2, optimizedBody481_55)
end InitECandidate.Proofs.SmallStages.Oracles481
