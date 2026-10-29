import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source631
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles631
def optimizedBody631_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 0)]

def optimizedBody631_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 16#64)

def optimizedBody631_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody631_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1352829926#64)

def optimizedBody631_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody631_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody631_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_4 optimizedBody631_5

def optimizedBody631_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_3 optimizedBody631_6

def optimizedBody631_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_2 optimizedBody631_7

def optimizedBody631_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody631_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody631_8 optimizedBody631_9

def optimizedBody631_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody631_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody631_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1548603684#64)

def optimizedBody631_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_13 optimizedBody631_6

def optimizedBody631_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_2 optimizedBody631_14

def optimizedBody631_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody631_15 optimizedBody631_9

def optimizedBody631_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 48#64)

def optimizedBody631_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1836072691#64)

def optimizedBody631_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_18 optimizedBody631_6

def optimizedBody631_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_2 optimizedBody631_19

def optimizedBody631_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody631_20 optimizedBody631_9

def optimizedBody631_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody631_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2053994217#64)

def optimizedBody631_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_23 optimizedBody631_6

def optimizedBody631_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_2 optimizedBody631_24

def optimizedBody631_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody631_25 optimizedBody631_9

def optimizedBody631_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody631_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_27 optimizedBody631_6

def optimizedBody631_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_2 optimizedBody631_28

def optimizedBody631_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_2 optimizedBody631_29

def optimizedBody631_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_26 optimizedBody631_30

def optimizedBody631_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_22 optimizedBody631_31

def optimizedBody631_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_11 optimizedBody631_32

def optimizedBody631_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_2 optimizedBody631_33

def optimizedBody631_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_2 optimizedBody631_34

def optimizedBody631_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_21 optimizedBody631_35

def optimizedBody631_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_17 optimizedBody631_36

def optimizedBody631_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_11 optimizedBody631_37

def optimizedBody631_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_2 optimizedBody631_38

def optimizedBody631_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_2 optimizedBody631_39

def optimizedBody631_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_16 optimizedBody631_40

def optimizedBody631_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_12 optimizedBody631_41

def optimizedBody631_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_11 optimizedBody631_42

def optimizedBody631_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_2 optimizedBody631_43

def optimizedBody631_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_2 optimizedBody631_44

def optimizedBody631_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_10 optimizedBody631_45

def optimizedBody631_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_1 optimizedBody631_46

def optimizedBody631_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody631_0 optimizedBody631_47

def oracle631 : Option (Spt Nat) :=
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
def optimized631 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(631, 2, optimizedBody631_48)
end InitECandidate.Proofs.SmallStages.Oracles631
