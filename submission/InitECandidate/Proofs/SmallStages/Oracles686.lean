import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source686
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles686
def optimizedBody686_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 4), (0, 0)]

def optimizedBody686_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody686_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 0), (46, 6)]

def optimizedBody686_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44), (0, 46)]

def optimizedBody686_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44), (0, 46)]

def optimizedBody686_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody686_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_4 optimizedBody686_5

def optimizedBody686_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody686_3, 686, 2)) (some 78) ([2, 4]) (some (2, optimizedBody686_6, 686, 3))

def optimizedBody686_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody686_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody686_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody686_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody686_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody686_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody686_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody686_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody686_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody686_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody686_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_16 optimizedBody686_17

def optimizedBody686_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_12 optimizedBody686_18

def optimizedBody686_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_15 optimizedBody686_19

def optimizedBody686_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_9 optimizedBody686_20

def optimizedBody686_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_12 optimizedBody686_21

def optimizedBody686_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_14 optimizedBody686_22

def optimizedBody686_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_9 optimizedBody686_23

def optimizedBody686_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_12 optimizedBody686_24

def optimizedBody686_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_13 optimizedBody686_25

def optimizedBody686_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_9 optimizedBody686_26

def optimizedBody686_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_12 optimizedBody686_27

def optimizedBody686_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_11 optimizedBody686_28

def optimizedBody686_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_9 optimizedBody686_29

def optimizedBody686_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_10 optimizedBody686_30

def optimizedBody686_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_9 optimizedBody686_31

def optimizedBody686_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_8 optimizedBody686_32

def optimizedBody686_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_7 optimizedBody686_33

def optimizedBody686_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_2 optimizedBody686_34

def optimizedBody686_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_1 optimizedBody686_35

def optimizedBody686_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_0 optimizedBody686_36

def oracle686 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 0
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0))
            (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))
def optimized686 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(686, 3, optimizedBody686_37)
end InitECandidate.Proofs.SmallStages.Oracles686
