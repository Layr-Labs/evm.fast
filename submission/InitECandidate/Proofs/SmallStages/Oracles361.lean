import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source361
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles361
def optimizedBody361_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2)]

def optimizedBody361_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody361_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody361_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody361_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 128#64)

def optimizedBody361_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody361_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody361_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody361_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_3 optimizedBody361_7

def optimizedBody361_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_6 optimizedBody361_8

def optimizedBody361_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_5 optimizedBody361_9

def optimizedBody361_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_4 optimizedBody361_10

def optimizedBody361_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_3 optimizedBody361_11

def optimizedBody361_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_2 optimizedBody361_12

def optimizedBody361_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(6, 2)]

def optimizedBody361_15 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 8) optimizedBody361_13 optimizedBody361_14

def optimizedBody361_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 6)]

def optimizedBody361_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody361_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6)]

def optimizedBody361_19 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 176) ([0, 2, 4, 6]) (none)

def optimizedBody361_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_18 optimizedBody361_19

def optimizedBody361_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_17 optimizedBody361_20

def optimizedBody361_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_16 optimizedBody361_21

def optimizedBody361_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_2 optimizedBody361_22

def optimizedBody361_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_2 optimizedBody361_23

def optimizedBody361_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_15 optimizedBody361_24

def optimizedBody361_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_1 optimizedBody361_25

def optimizedBody361_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody361_0 optimizedBody361_26

def oracle361 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3)) 2 (Flapjack.Spt.ls 1))
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 1 Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)) 0 (Flapjack.Spt.ls 4))))
      Flapjack.Spt.ln))
def optimized361 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(361, 3, optimizedBody361_27)
end InitECandidate.Proofs.SmallStages.Oracles361
