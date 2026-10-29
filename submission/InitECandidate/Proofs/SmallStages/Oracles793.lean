import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source793
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles793
def optimizedBody793_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2), (0, 0)]

def optimizedBody793_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody793_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4), (48, 2)]

def optimizedBody793_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (6, 48)]

def optimizedBody793_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48)]

def optimizedBody793_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody793_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody793_4 optimizedBody793_5

def optimizedBody793_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody793_3, 793, 2)) (some 739) ([2, 4]) (some (2, optimizedBody793_6, 793, 3))

def optimizedBody793_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody793_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody793_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody793_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody793_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (48, 6)]

def optimizedBody793_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48)]

def optimizedBody793_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody793_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody793_14 optimizedBody793_5

def optimizedBody793_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody793_13, 793, 4)) (some 739) ([2, 4]) (some (2, optimizedBody793_15, 793, 5))

def optimizedBody793_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (0, 0)]

def optimizedBody793_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody793_1 optimizedBody793_17

def optimizedBody793_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody793_16 optimizedBody793_18

def optimizedBody793_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody793_12 optimizedBody793_19

def optimizedBody793_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody793_11 optimizedBody793_20

def optimizedBody793_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody793_10 optimizedBody793_21

def optimizedBody793_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody793_9 optimizedBody793_22

def optimizedBody793_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody793_8 optimizedBody793_23

def optimizedBody793_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody793_1 optimizedBody793_24

def optimizedBody793_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody793_7 optimizedBody793_25

def optimizedBody793_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody793_2 optimizedBody793_26

def optimizedBody793_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody793_1 optimizedBody793_27

def optimizedBody793_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (4, 4), (0, 2)]

def optimizedBody793_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody793_1 optimizedBody793_29

def optimizedBody793_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody793_28 optimizedBody793_30

def optimizedBody793_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody793_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody793_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody793_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody793_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody793_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody793_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody793_37 optimizedBody793_5

def optimizedBody793_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody793_36, 793, 6)) (some 747) ([2, 4]) (some (2, optimizedBody793_38, 793, 7))

def optimizedBody793_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody793_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody793_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody793_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody793_41 optimizedBody793_42

def optimizedBody793_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody793_40 optimizedBody793_43

def optimizedBody793_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody793_1 optimizedBody793_44

def optimizedBody793_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody793_39 optimizedBody793_45

def optimizedBody793_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody793_35 optimizedBody793_46

def optimizedBody793_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody793_34 optimizedBody793_47

def optimizedBody793_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody793_33 optimizedBody793_48

def optimizedBody793_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody793_32 optimizedBody793_49

def optimizedBody793_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody793_10 optimizedBody793_50

def optimizedBody793_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody793_1 optimizedBody793_51

def optimizedBody793_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody793_31 optimizedBody793_52

def optimizedBody793_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody793_0 optimizedBody793_53

def oracle793 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln 1
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 (Flapjack.Spt.ls 2)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 0))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln) 0
            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 22))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 23 Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 22 Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))))
def optimized793 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(793, 3, optimizedBody793_54)
end InitECandidate.Proofs.SmallStages.Oracles793
