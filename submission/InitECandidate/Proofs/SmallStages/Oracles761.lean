import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source761
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles761
def optimizedBody761_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0), (46, 4), (48, 2), (50, 6)]

def optimizedBody761_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (8, 48), (10, 50)]

def optimizedBody761_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (8, 48), (10, 50)]

def optimizedBody761_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody761_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_2 optimizedBody761_3

def optimizedBody761_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody761_1, 761, 2)) (some 746) ([2, 4, 6]) (some (2, optimizedBody761_4, 761, 3))

def optimizedBody761_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody761_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody761_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody761_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody761_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody761_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody761_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 10 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody761_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 8), (50, 10)]

def optimizedBody761_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (6, 48), (0, 50)]

def optimizedBody761_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48), (0, 50)]

def optimizedBody761_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_15 optimizedBody761_3

def optimizedBody761_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody761_14, 761, 4)) (some 746) ([2, 4, 6]) (some (2, optimizedBody761_16, 761, 5))

def optimizedBody761_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody761_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody761_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody761_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody761_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody761_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody761_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody761_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody761_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_25 optimizedBody761_3

def optimizedBody761_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody761_24, 761, 6)) (some 746) ([2, 4, 6]) (some (2, optimizedBody761_26, 761, 7))

def optimizedBody761_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody761_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody761_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody761_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_29 optimizedBody761_30

def optimizedBody761_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_28 optimizedBody761_31

def optimizedBody761_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_6 optimizedBody761_32

def optimizedBody761_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_27 optimizedBody761_33

def optimizedBody761_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_23 optimizedBody761_34

def optimizedBody761_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_22 optimizedBody761_35

def optimizedBody761_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_9 optimizedBody761_36

def optimizedBody761_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_21 optimizedBody761_37

def optimizedBody761_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_20 optimizedBody761_38

def optimizedBody761_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_19 optimizedBody761_39

def optimizedBody761_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_18 optimizedBody761_40

def optimizedBody761_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_6 optimizedBody761_41

def optimizedBody761_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_17 optimizedBody761_42

def optimizedBody761_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_13 optimizedBody761_43

def optimizedBody761_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_12 optimizedBody761_44

def optimizedBody761_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_11 optimizedBody761_45

def optimizedBody761_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_10 optimizedBody761_46

def optimizedBody761_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_9 optimizedBody761_47

def optimizedBody761_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_8 optimizedBody761_48

def optimizedBody761_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_7 optimizedBody761_49

def optimizedBody761_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_6 optimizedBody761_50

def optimizedBody761_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_5 optimizedBody761_51

def optimizedBody761_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody761_0 optimizedBody761_52

def oracle761 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 5 (Flapjack.Spt.ls 22))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 4)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 22 Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 25 Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls 24)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 25))))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))))
def optimized761 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(761, 4, optimizedBody761_53)
end InitECandidate.Proofs.SmallStages.Oracles761
