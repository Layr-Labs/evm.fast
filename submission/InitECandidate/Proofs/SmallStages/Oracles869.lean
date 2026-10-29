import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source869
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles869
def optimizedBody869_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 10), (14, 8), (12, 6), (10, 4), (2, 2), (0, 0)]

def optimizedBody869_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody869_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody869_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody869_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 0)]

def optimizedBody869_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (16, 16), (14, 14), (12, 12), (10, 10), (6, 6), (8, 8), (18, 44)]

def optimizedBody869_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (18, 44)]

def optimizedBody869_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody869_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_6 optimizedBody869_7

def optimizedBody869_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12, 14, 16]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody869_5, 869, 2)) (some 121) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody869_8, 869, 3))

def optimizedBody869_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody869_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody869_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (16, 16)]

def optimizedBody869_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 14 16 (Flapjack.WordRegImm.reg 14)))

def optimizedBody869_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody869_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 12 14 (Flapjack.WordRegImm.reg 12)))

def optimizedBody869_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody869_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 12 (Flapjack.WordRegImm.reg 10)))

def optimizedBody869_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody869_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody869_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody869_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_19 optimizedBody869_20

def optimizedBody869_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_10 optimizedBody869_21

def optimizedBody869_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_10 optimizedBody869_20

def optimizedBody869_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 12) optimizedBody869_22 optimizedBody869_23

def optimizedBody869_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 0), (6, 4), (8, 6), (10, 8)]

def optimizedBody869_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 18 [2, 4, 6, 8, 10]

def optimizedBody869_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_25 optimizedBody869_26

def optimizedBody869_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_10 optimizedBody869_27

def optimizedBody869_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_24 optimizedBody869_28

def optimizedBody869_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_18 optimizedBody869_29

def optimizedBody869_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_17 optimizedBody869_30

def optimizedBody869_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_16 optimizedBody869_31

def optimizedBody869_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_15 optimizedBody869_32

def optimizedBody869_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_14 optimizedBody869_33

def optimizedBody869_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_13 optimizedBody869_34

def optimizedBody869_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_35

def optimizedBody869_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_11 optimizedBody869_36

def optimizedBody869_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_10 optimizedBody869_37

def optimizedBody869_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_9 optimizedBody869_38

def optimizedBody869_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_4 optimizedBody869_39

def optimizedBody869_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_3 optimizedBody869_40

def optimizedBody869_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_2 optimizedBody869_41

def optimizedBody869_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_1 optimizedBody869_42

def optimizedBody869_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_0 optimizedBody869_43

def oracle869 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 8))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 6 Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 8 (Flapjack.Spt.ls 4))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 5 Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 4 (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 6)) 0
              (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 7 Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln))))
def optimized869 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(869, 6, optimizedBody869_44)
end InitECandidate.Proofs.SmallStages.Oracles869
