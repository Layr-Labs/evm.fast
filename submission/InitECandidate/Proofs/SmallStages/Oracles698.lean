import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source698
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles698
def optimizedBody698_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2)]

def optimizedBody698_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody698_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (46, 4), (0, 2), (4, 4)]

def optimizedBody698_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody698_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody698_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody698_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody698_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 6 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody698_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody698_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody698_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody698_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0), (50, 6)]

def optimizedBody698_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (8, 44), (10, 46), (0, 48), (12, 50)]

def optimizedBody698_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (10, 46), (0, 48), (12, 50)]

def optimizedBody698_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody698_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_13 optimizedBody698_14

def optimizedBody698_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody698_12, 698, 2)) (some 80) ([2, 4]) (some (2, optimizedBody698_15, 698, 3))

def optimizedBody698_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 12)]

def optimizedBody698_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody698_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_17 optimizedBody698_18

def optimizedBody698_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_1 optimizedBody698_19

def optimizedBody698_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(4, 12)]

def optimizedBody698_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody698_20 optimizedBody698_21

def optimizedBody698_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 8), (46, 10), (0, 0), (4, 4)]

def optimizedBody698_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody698_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_23 optimizedBody698_24

def optimizedBody698_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_1 optimizedBody698_25

def optimizedBody698_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_1 optimizedBody698_26

def optimizedBody698_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_22 optimizedBody698_27

def optimizedBody698_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_3 optimizedBody698_28

def optimizedBody698_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_6 optimizedBody698_29

def optimizedBody698_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_1 optimizedBody698_30

def optimizedBody698_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_16 optimizedBody698_31

def optimizedBody698_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_11 optimizedBody698_32

def optimizedBody698_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_10 optimizedBody698_33

def optimizedBody698_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_9 optimizedBody698_34

def optimizedBody698_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_8 optimizedBody698_35

def optimizedBody698_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_7 optimizedBody698_36

def optimizedBody698_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_6 optimizedBody698_37

def optimizedBody698_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_5 optimizedBody698_38

def optimizedBody698_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_4 optimizedBody698_39

def optimizedBody698_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_1 optimizedBody698_40

def optimizedBody698_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody698_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_1 optimizedBody698_42

def optimizedBody698_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody698_41 optimizedBody698_43

def optimizedBody698_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (46, 6), (0, 0), (4, 4)]

def optimizedBody698_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_1 optimizedBody698_45

def optimizedBody698_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_44 optimizedBody698_46

def optimizedBody698_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_4 optimizedBody698_47

def optimizedBody698_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_3 optimizedBody698_48

def optimizedBody698_50 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) optimizedBody698_49 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody698_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 18446744073709551615#64)

def optimizedBody698_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody698_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody698_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_52 optimizedBody698_53

def optimizedBody698_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_51 optimizedBody698_54

def optimizedBody698_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_1 optimizedBody698_55

def optimizedBody698_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_50 optimizedBody698_56

def optimizedBody698_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_2 optimizedBody698_57

def optimizedBody698_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_1 optimizedBody698_58

def optimizedBody698_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_0 optimizedBody698_59

def oracle698 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 3)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 0
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 1
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 Flapjack.Spt.ln))
            0
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 1)) 22
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 2 (Flapjack.Spt.ls 0))
            1 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 23 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 2
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
def optimized698 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(698, 3, optimizedBody698_60)
end InitECandidate.Proofs.SmallStages.Oracles698
