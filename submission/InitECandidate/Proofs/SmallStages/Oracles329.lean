import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source329
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles329
def optimizedBody329_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 0)]

def optimizedBody329_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody329_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody329_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody329_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody329_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody329_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_4 optimizedBody329_5

def optimizedBody329_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_3 optimizedBody329_6

def optimizedBody329_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_2 optimizedBody329_7

def optimizedBody329_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody329_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody329_8 optimizedBody329_9

def optimizedBody329_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody329_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody329_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody329_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 33#64)

def optimizedBody329_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_14 optimizedBody329_6

def optimizedBody329_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_2 optimizedBody329_15

def optimizedBody329_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 6) optimizedBody329_16 optimizedBody329_9

def optimizedBody329_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody329_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 13#64)

def optimizedBody329_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody329_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody329_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody329_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody329_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_22 optimizedBody329_23

def optimizedBody329_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody329_21, 329, 2)) (some 288) ([2]) (some (2, optimizedBody329_24, 329, 3))

def optimizedBody329_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody329_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_2 optimizedBody329_26

def optimizedBody329_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_25 optimizedBody329_27

def optimizedBody329_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_20 optimizedBody329_28

def optimizedBody329_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_19 optimizedBody329_29

def optimizedBody329_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_2 optimizedBody329_30

def optimizedBody329_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 6) optimizedBody329_31 optimizedBody329_27

def optimizedBody329_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody329_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody329_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_2 optimizedBody329_6

def optimizedBody329_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody329_35 optimizedBody329_9

def optimizedBody329_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_2 optimizedBody329_16

def optimizedBody329_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_36 optimizedBody329_37

def optimizedBody329_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_34 optimizedBody329_38

def optimizedBody329_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_4 optimizedBody329_39

def optimizedBody329_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_33 optimizedBody329_40

def optimizedBody329_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_11 optimizedBody329_41

def optimizedBody329_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_2 optimizedBody329_42

def optimizedBody329_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_32 optimizedBody329_43

def optimizedBody329_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_13 optimizedBody329_44

def optimizedBody329_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_18 optimizedBody329_45

def optimizedBody329_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_11 optimizedBody329_46

def optimizedBody329_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_2 optimizedBody329_47

def optimizedBody329_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_2 optimizedBody329_48

def optimizedBody329_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_17 optimizedBody329_49

def optimizedBody329_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_13 optimizedBody329_50

def optimizedBody329_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_12 optimizedBody329_51

def optimizedBody329_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_11 optimizedBody329_52

def optimizedBody329_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_2 optimizedBody329_53

def optimizedBody329_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_2 optimizedBody329_54

def optimizedBody329_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_10 optimizedBody329_55

def optimizedBody329_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_1 optimizedBody329_56

def optimizedBody329_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_0 optimizedBody329_57

def oracle329 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2)))
            1 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0))) 2
            (Flapjack.Spt.bs Flapjack.Spt.ln 1
              (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 0
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) (Flapjack.Spt.ls 2)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            Flapjack.Spt.ln)))))
def optimized329 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(329, 2, optimizedBody329_58)
end InitECandidate.Proofs.SmallStages.Oracles329
