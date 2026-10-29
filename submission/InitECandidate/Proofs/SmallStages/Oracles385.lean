import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source385
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles385
def optimizedBody385_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4)]

def optimizedBody385_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody385_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody385_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody385_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6), (8, 8), (4, 4), (2, 2)]

def optimizedBody385_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody385_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody385_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody385_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody385_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody385_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody385_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody385_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody385_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody385_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_12 optimizedBody385_13

def optimizedBody385_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_11 optimizedBody385_14

def optimizedBody385_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_3 optimizedBody385_15

def optimizedBody385_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_3 optimizedBody385_13

def optimizedBody385_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 12) optimizedBody385_16 optimizedBody385_17

def optimizedBody385_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody385_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody385_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (8, 8), (4, 4), (2, 2)]

def optimizedBody385_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody385_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_21 optimizedBody385_22

def optimizedBody385_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_20 optimizedBody385_23

def optimizedBody385_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_19 optimizedBody385_24

def optimizedBody385_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_3 optimizedBody385_25

def optimizedBody385_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_18 optimizedBody385_26

def optimizedBody385_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_10 optimizedBody385_27

def optimizedBody385_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_9 optimizedBody385_28

def optimizedBody385_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_8 optimizedBody385_29

def optimizedBody385_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_7 optimizedBody385_30

def optimizedBody385_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_6 optimizedBody385_31

def optimizedBody385_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_3 optimizedBody385_32

def optimizedBody385_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody385_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody385_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_34 optimizedBody385_35

def optimizedBody385_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_3 optimizedBody385_36

def optimizedBody385_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 4) optimizedBody385_33 optimizedBody385_37

def optimizedBody385_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_3 optimizedBody385_21

def optimizedBody385_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_38 optimizedBody385_39

def optimizedBody385_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_5 optimizedBody385_40

def optimizedBody385_42 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) optimizedBody385_41 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)

def optimizedBody385_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody385_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody385_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody385_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody385_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody385_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody385_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_47 optimizedBody385_48

def optimizedBody385_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_46 optimizedBody385_49

def optimizedBody385_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_11 optimizedBody385_50

def optimizedBody385_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_45 optimizedBody385_51

def optimizedBody385_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_44 optimizedBody385_52

def optimizedBody385_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_43 optimizedBody385_53

def optimizedBody385_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_3 optimizedBody385_54

def optimizedBody385_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_42 optimizedBody385_55

def optimizedBody385_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_4 optimizedBody385_56

def optimizedBody385_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_3 optimizedBody385_57

def optimizedBody385_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_2 optimizedBody385_58

def optimizedBody385_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_1 optimizedBody385_59

def optimizedBody385_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_0 optimizedBody385_60

def oracle385 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 1
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 (Flapjack.Spt.ls 4)))
            1 (Flapjack.Spt.ls 0))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 4 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 Flapjack.Spt.ln))
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 6 Flapjack.Spt.ln) 3 (Flapjack.Spt.ls 2))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 2
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 5 (Flapjack.Spt.ls 4)))
            0 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 4 Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 Flapjack.Spt.ln) 2
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 4 Flapjack.Spt.ln)))))
      Flapjack.Spt.ln))
def optimized385 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(385, 3, optimizedBody385_61)
end InitECandidate.Proofs.SmallStages.Oracles385
