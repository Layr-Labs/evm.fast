import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source594
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles594
def optimizedBody594_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 0), (46, 4), (48, 2)]

def optimizedBody594_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (46, 48)]

def optimizedBody594_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (46, 48)]

def optimizedBody594_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody594_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_2 optimizedBody594_3

def optimizedBody594_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody594_1, 594, 2)) (some 409) ([2]) (some (2, optimizedBody594_4, 594, 3))

def optimizedBody594_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody594_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody594_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody594_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0)]

def optimizedBody594_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody594_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody594_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_11 optimizedBody594_3

def optimizedBody594_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody594_10, 594, 4)) (some 410) ([2, 4]) (some (2, optimizedBody594_12, 594, 5))

def optimizedBody594_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody594_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody594_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (48, 48)]

def optimizedBody594_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (0, 44), (4, 46), (6, 48)]

def optimizedBody594_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46), (6, 48)]

def optimizedBody594_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_18 optimizedBody594_3

def optimizedBody594_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody594_17, 594, 6)) (some 470) ([2, 4]) (some (2, optimizedBody594_19, 594, 7))

def optimizedBody594_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody594_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody594_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody594_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_22 optimizedBody594_23

def optimizedBody594_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_15 optimizedBody594_24

def optimizedBody594_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_6 optimizedBody594_25

def optimizedBody594_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody594_28 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody594_26 optimizedBody594_27

def optimizedBody594_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (6, 6)]

def optimizedBody594_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_6 optimizedBody594_29

def optimizedBody594_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_6 optimizedBody594_30

def optimizedBody594_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_28 optimizedBody594_31

def optimizedBody594_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_15 optimizedBody594_32

def optimizedBody594_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_21 optimizedBody594_33

def optimizedBody594_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_6 optimizedBody594_34

def optimizedBody594_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_20 optimizedBody594_35

def optimizedBody594_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_16 optimizedBody594_36

def optimizedBody594_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_6 optimizedBody594_37

def optimizedBody594_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (4, 46), (6, 48)]

def optimizedBody594_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_6 optimizedBody594_39

def optimizedBody594_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody594_38 optimizedBody594_40

def optimizedBody594_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody594_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody594_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 40#64))

def optimizedBody594_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody594_26 optimizedBody594_27

def optimizedBody594_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody594_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_46 optimizedBody594_24

def optimizedBody594_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_6 optimizedBody594_47

def optimizedBody594_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_6 optimizedBody594_48

def optimizedBody594_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_45 optimizedBody594_49

def optimizedBody594_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_44 optimizedBody594_50

def optimizedBody594_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_14 optimizedBody594_51

def optimizedBody594_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_43 optimizedBody594_52

def optimizedBody594_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_42 optimizedBody594_53

def optimizedBody594_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_6 optimizedBody594_54

def optimizedBody594_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_41 optimizedBody594_55

def optimizedBody594_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_15 optimizedBody594_56

def optimizedBody594_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_14 optimizedBody594_57

def optimizedBody594_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_6 optimizedBody594_58

def optimizedBody594_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_13 optimizedBody594_59

def optimizedBody594_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_60

def optimizedBody594_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_8 optimizedBody594_61

def optimizedBody594_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_7 optimizedBody594_62

def optimizedBody594_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_6 optimizedBody594_63

def optimizedBody594_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_5 optimizedBody594_64

def optimizedBody594_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_0 optimizedBody594_65

def oracle594 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))) 2
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
              22 (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 23 Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 24 Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 23 Flapjack.Spt.ln)
            Flapjack.Spt.ln)))))
def optimized594 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(594, 3, optimizedBody594_66)
end InitECandidate.Proofs.SmallStages.Oracles594
