import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source630
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles630
def optimizedBody630_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 0)]

def optimizedBody630_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 16#64)

def optimizedBody630_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody630_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody630_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody630_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody630_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_4 optimizedBody630_5

def optimizedBody630_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_3 optimizedBody630_6

def optimizedBody630_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_2 optimizedBody630_7

def optimizedBody630_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody630_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody630_8 optimizedBody630_9

def optimizedBody630_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody630_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody630_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1518500249#64)

def optimizedBody630_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_13 optimizedBody630_6

def optimizedBody630_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_2 optimizedBody630_14

def optimizedBody630_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody630_15 optimizedBody630_9

def optimizedBody630_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 48#64)

def optimizedBody630_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1859775393#64)

def optimizedBody630_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_18 optimizedBody630_6

def optimizedBody630_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_2 optimizedBody630_19

def optimizedBody630_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody630_20 optimizedBody630_9

def optimizedBody630_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody630_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2400959708#64)

def optimizedBody630_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_23 optimizedBody630_6

def optimizedBody630_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_2 optimizedBody630_24

def optimizedBody630_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody630_25 optimizedBody630_9

def optimizedBody630_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2840853838#64)

def optimizedBody630_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_27 optimizedBody630_6

def optimizedBody630_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_2 optimizedBody630_28

def optimizedBody630_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_2 optimizedBody630_29

def optimizedBody630_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_26 optimizedBody630_30

def optimizedBody630_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_22 optimizedBody630_31

def optimizedBody630_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_11 optimizedBody630_32

def optimizedBody630_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_2 optimizedBody630_33

def optimizedBody630_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_2 optimizedBody630_34

def optimizedBody630_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_21 optimizedBody630_35

def optimizedBody630_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_17 optimizedBody630_36

def optimizedBody630_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_11 optimizedBody630_37

def optimizedBody630_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_2 optimizedBody630_38

def optimizedBody630_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_2 optimizedBody630_39

def optimizedBody630_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_16 optimizedBody630_40

def optimizedBody630_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_12 optimizedBody630_41

def optimizedBody630_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_11 optimizedBody630_42

def optimizedBody630_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_2 optimizedBody630_43

def optimizedBody630_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_2 optimizedBody630_44

def optimizedBody630_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_10 optimizedBody630_45

def optimizedBody630_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_1 optimizedBody630_46

def optimizedBody630_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody630_0 optimizedBody630_47

def oracle630 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))))
          0
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln) 2
            (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
      Flapjack.Spt.ln))
def optimized630 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(630, 2, optimizedBody630_48)
end InitECandidate.Proofs.SmallStages.Oracles630
