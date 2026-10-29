import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source342
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles342
def optimizedBody342_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2)]

def optimizedBody342_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody342_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody342_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody342_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody342_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody342_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody342_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0)]

def optimizedBody342_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4), (0, 2), (8, 44)]

def optimizedBody342_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44)]

def optimizedBody342_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody342_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_9 optimizedBody342_10

def optimizedBody342_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody342_8, 342, 2)) (some 161) ([2, 4]) (some (2, optimizedBody342_11, 342, 3))

def optimizedBody342_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody342_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody342_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody342_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 17#64)

def optimizedBody342_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody342_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def optimizedBody342_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody342_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_19 optimizedBody342_10

def optimizedBody342_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_18 optimizedBody342_20

def optimizedBody342_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_17 optimizedBody342_21

def optimizedBody342_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_14 optimizedBody342_22

def optimizedBody342_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_16 optimizedBody342_23

def optimizedBody342_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_13 optimizedBody342_24

def optimizedBody342_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody342_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody342_25 optimizedBody342_26

def optimizedBody342_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody342_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody342_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody342_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_2 optimizedBody342_30

def optimizedBody342_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_15 optimizedBody342_31

def optimizedBody342_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_13 optimizedBody342_32

def optimizedBody342_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 0) optimizedBody342_33 optimizedBody342_26

def optimizedBody342_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 20#64)

def optimizedBody342_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 0) optimizedBody342_25 optimizedBody342_26

def optimizedBody342_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody342_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_37 optimizedBody342_30

def optimizedBody342_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_13 optimizedBody342_38

def optimizedBody342_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_13 optimizedBody342_39

def optimizedBody342_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_36 optimizedBody342_40

def optimizedBody342_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_35 optimizedBody342_41

def optimizedBody342_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_28 optimizedBody342_42

def optimizedBody342_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_13 optimizedBody342_43

def optimizedBody342_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_13 optimizedBody342_44

def optimizedBody342_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_34 optimizedBody342_45

def optimizedBody342_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_29 optimizedBody342_46

def optimizedBody342_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_28 optimizedBody342_47

def optimizedBody342_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_13 optimizedBody342_48

def optimizedBody342_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_13 optimizedBody342_49

def optimizedBody342_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_27 optimizedBody342_50

def optimizedBody342_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_15 optimizedBody342_51

def optimizedBody342_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_14 optimizedBody342_52

def optimizedBody342_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_13 optimizedBody342_53

def optimizedBody342_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_12 optimizedBody342_54

def optimizedBody342_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_7 optimizedBody342_55

def optimizedBody342_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_6 optimizedBody342_56

def optimizedBody342_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_5 optimizedBody342_57

def optimizedBody342_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_4 optimizedBody342_58

def optimizedBody342_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_3 optimizedBody342_59

def optimizedBody342_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_2 optimizedBody342_60

def optimizedBody342_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_1 optimizedBody342_61

def optimizedBody342_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_0 optimizedBody342_62

def oracle342 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)) 1
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln) 1 Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 3)) 1
              (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 1)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
            0 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 2
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))))
def optimized342 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(342, 3, optimizedBody342_63)
end InitECandidate.Proofs.SmallStages.Oracles342
