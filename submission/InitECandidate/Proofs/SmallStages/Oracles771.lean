import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source771
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles771
def optimizedBody771_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4), (48, 2)]

def optimizedBody771_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48)]

def optimizedBody771_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody771_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody771_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody771_2 optimizedBody771_3

def optimizedBody771_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody771_1, 771, 2)) (some 757) ([2, 4]) (some (2, optimizedBody771_4, 771, 3))

def optimizedBody771_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody771_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody771_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 288#64)))

def optimizedBody771_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody771_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 288#64)))

def optimizedBody771_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody771_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody771_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody771_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody771_13 optimizedBody771_3

def optimizedBody771_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody771_12, 771, 4)) (some 762) ([2, 4]) (some (2, optimizedBody771_14, 771, 5))

def optimizedBody771_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody771_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody771_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody771_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody771_17 optimizedBody771_18

def optimizedBody771_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody771_16 optimizedBody771_19

def optimizedBody771_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody771_6 optimizedBody771_20

def optimizedBody771_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody771_15 optimizedBody771_21

def optimizedBody771_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody771_11 optimizedBody771_22

def optimizedBody771_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody771_10 optimizedBody771_23

def optimizedBody771_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody771_9 optimizedBody771_24

def optimizedBody771_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody771_8 optimizedBody771_25

def optimizedBody771_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody771_7 optimizedBody771_26

def optimizedBody771_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody771_6 optimizedBody771_27

def optimizedBody771_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody771_5 optimizedBody771_28

def optimizedBody771_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody771_0 optimizedBody771_29

def oracle771 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))))
def optimized771 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(771, 3, optimizedBody771_30)
end InitECandidate.Proofs.SmallStages.Oracles771
