import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source717
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles717
def optimizedBody717_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(14, 14), (2, 2), (26, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (16, 16), (18, 18), (20, 20), (22, 22),
    (24, 24)]

def optimizedBody717_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody717_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody717_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 2 2 14 0))

def optimizedBody717_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (16, 16), (4, 4), (2, 2)]

def optimizedBody717_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 4 4 16 0))

def optimizedBody717_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (18, 18), (6, 6), (4, 4)]

def optimizedBody717_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 6 6 18 0))

def optimizedBody717_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (20, 20), (8, 8), (6, 6)]

def optimizedBody717_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 8 8 20 0))

def optimizedBody717_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (22, 22), (10, 10), (8, 8)]

def optimizedBody717_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 10 10 22 0))

def optimizedBody717_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (24, 24), (12, 12), (10, 10)]

def optimizedBody717_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 12 12 24 0))

def optimizedBody717_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 0)]

def optimizedBody717_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 26 [2, 4, 6, 8, 10, 12, 14]

def optimizedBody717_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody717_14 optimizedBody717_15

def optimizedBody717_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody717_13 optimizedBody717_16

def optimizedBody717_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody717_12 optimizedBody717_17

def optimizedBody717_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody717_11 optimizedBody717_18

def optimizedBody717_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody717_10 optimizedBody717_19

def optimizedBody717_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody717_9 optimizedBody717_20

def optimizedBody717_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody717_8 optimizedBody717_21

def optimizedBody717_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody717_7 optimizedBody717_22

def optimizedBody717_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody717_6 optimizedBody717_23

def optimizedBody717_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody717_5 optimizedBody717_24

def optimizedBody717_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody717_4 optimizedBody717_25

def optimizedBody717_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody717_3 optimizedBody717_26

def optimizedBody717_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody717_2 optimizedBody717_27

def optimizedBody717_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody717_1 optimizedBody717_28

def optimizedBody717_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody717_0 optimizedBody717_29

def oracle717 : Option (Spt Nat) :=
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.ls 3)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1 (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 6))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 9 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 6)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 5))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 7 (Flapjack.Spt.ls 9))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 6 (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 12))))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.ls 2)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 12 (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 5))))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 0))))))
      Flapjack.Spt.ln))
def optimized717 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(717, 13, optimizedBody717_30)
end InitECandidate.Proofs.SmallStages.Oracles717
