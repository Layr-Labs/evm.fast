import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source543
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles543
def optimizedBody543_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody543_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 90#64)

def optimizedBody543_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody543_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody543_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody543_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_3 optimizedBody543_4

def optimizedBody543_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody543_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_6 optimizedBody543_4

def optimizedBody543_8 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody543_5 optimizedBody543_7

def optimizedBody543_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody543_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 128#64)

def optimizedBody543_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody543_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody543_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_11 optimizedBody543_12

def optimizedBody543_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody543_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_14 optimizedBody543_12

def optimizedBody543_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody543_13 optimizedBody543_15

def optimizedBody543_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody543_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody543_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody543_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 145#64)))

def optimizedBody543_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.imm 255#64)))

def optimizedBody543_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody543_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_2 optimizedBody543_22

def optimizedBody543_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_21 optimizedBody543_23

def optimizedBody543_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_20 optimizedBody543_24

def optimizedBody543_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_2 optimizedBody543_25

def optimizedBody543_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_9 optimizedBody543_26

def optimizedBody543_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody543_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 4) optimizedBody543_27 optimizedBody543_28

def optimizedBody543_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 10#64)

def optimizedBody543_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody543_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody543_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody543_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody543_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody543_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_34 optimizedBody543_35

def optimizedBody543_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_33 optimizedBody543_36

def optimizedBody543_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_32 optimizedBody543_37

def optimizedBody543_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_31 optimizedBody543_38

def optimizedBody543_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_30 optimizedBody543_39

def optimizedBody543_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_9 optimizedBody543_40

def optimizedBody543_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_9 optimizedBody543_41

def optimizedBody543_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_29 optimizedBody543_42

def optimizedBody543_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_19 optimizedBody543_43

def optimizedBody543_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_18 optimizedBody543_44

def optimizedBody543_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_17 optimizedBody543_45

def optimizedBody543_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_9 optimizedBody543_46

def optimizedBody543_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_16 optimizedBody543_47

def optimizedBody543_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_10 optimizedBody543_48

def optimizedBody543_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_2 optimizedBody543_49

def optimizedBody543_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_9 optimizedBody543_50

def optimizedBody543_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_8 optimizedBody543_51

def optimizedBody543_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_2 optimizedBody543_52

def optimizedBody543_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_1 optimizedBody543_53

def optimizedBody543_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody543_0 optimizedBody543_54

def oracle543 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1
            (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 2))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 2)))))
      Flapjack.Spt.ln))
def optimized543 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(543, 2, optimizedBody543_55)
end InitECandidate.Proofs.SmallStages.Oracles543
