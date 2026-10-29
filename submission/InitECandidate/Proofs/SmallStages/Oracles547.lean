import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source547
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles547
def optimizedBody547_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (6, 4)]

def optimizedBody547_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 88#64))

def optimizedBody547_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 8#64)

def optimizedBody547_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 6)]

def optimizedBody547_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (6, 44), (0, 46)]

def optimizedBody547_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (0, 46)]

def optimizedBody547_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody547_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody547_5 optimizedBody547_6

def optimizedBody547_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody547_4, 547, 2)) (some 439) ([2, 4]) (some (2, optimizedBody547_7, 547, 3))

def optimizedBody547_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody547_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody547_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody547_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody547_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody547_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody547_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody547_13 optimizedBody547_14

def optimizedBody547_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody547_12 optimizedBody547_15

def optimizedBody547_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody547_11 optimizedBody547_16

def optimizedBody547_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody547_10 optimizedBody547_17

def optimizedBody547_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody547_9 optimizedBody547_18

def optimizedBody547_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody547_8 optimizedBody547_19

def optimizedBody547_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody547_3 optimizedBody547_20

def optimizedBody547_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody547_2 optimizedBody547_21

def optimizedBody547_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody547_1 optimizedBody547_22

def optimizedBody547_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody547_0 optimizedBody547_23

def oracle547 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) 1
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)) 3 (Flapjack.Spt.ls 2))
          (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))
def optimized547 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(547, 3, optimizedBody547_24)
end InitECandidate.Proofs.SmallStages.Oracles547
