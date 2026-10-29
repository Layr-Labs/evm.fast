import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source649
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles649
def optimizedBody649_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody649_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody649_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody649_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody649_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody649_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody649_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody649_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody649_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody649_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody649_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody649_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody649_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody649_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody649_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody649_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody649_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody649_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody649_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody649_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_2 optimizedBody649_18

def optimizedBody649_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_17 optimizedBody649_19

def optimizedBody649_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_7 optimizedBody649_20

def optimizedBody649_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_2 optimizedBody649_21

def optimizedBody649_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_4 optimizedBody649_22

def optimizedBody649_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_6 optimizedBody649_23

def optimizedBody649_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_2 optimizedBody649_24

def optimizedBody649_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_4 optimizedBody649_25

def optimizedBody649_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_5 optimizedBody649_26

def optimizedBody649_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_2 optimizedBody649_27

def optimizedBody649_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_4 optimizedBody649_28

def optimizedBody649_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_3 optimizedBody649_29

def optimizedBody649_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_2 optimizedBody649_30

def optimizedBody649_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_4 optimizedBody649_31

def optimizedBody649_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_16 optimizedBody649_32

def optimizedBody649_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_2 optimizedBody649_33

def optimizedBody649_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_15 optimizedBody649_34

def optimizedBody649_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_10 optimizedBody649_35

def optimizedBody649_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_12 optimizedBody649_36

def optimizedBody649_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_14 optimizedBody649_37

def optimizedBody649_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_10 optimizedBody649_38

def optimizedBody649_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_12 optimizedBody649_39

def optimizedBody649_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_13 optimizedBody649_40

def optimizedBody649_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_10 optimizedBody649_41

def optimizedBody649_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_12 optimizedBody649_42

def optimizedBody649_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_11 optimizedBody649_43

def optimizedBody649_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_10 optimizedBody649_44

def optimizedBody649_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_9 optimizedBody649_45

def optimizedBody649_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_8 optimizedBody649_46

def optimizedBody649_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_2 optimizedBody649_47

def optimizedBody649_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_7 optimizedBody649_48

def optimizedBody649_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_2 optimizedBody649_49

def optimizedBody649_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_4 optimizedBody649_50

def optimizedBody649_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_6 optimizedBody649_51

def optimizedBody649_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_2 optimizedBody649_52

def optimizedBody649_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_4 optimizedBody649_53

def optimizedBody649_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_5 optimizedBody649_54

def optimizedBody649_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_2 optimizedBody649_55

def optimizedBody649_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_4 optimizedBody649_56

def optimizedBody649_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_3 optimizedBody649_57

def optimizedBody649_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_2 optimizedBody649_58

def optimizedBody649_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_1 optimizedBody649_59

def optimizedBody649_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody649_0 optimizedBody649_60

def oracle649 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 2
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)) 2 (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)) 2 Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 1 Flapjack.Spt.ln) 1
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 1 (Flapjack.Spt.ls 2)) 0
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))))))
      Flapjack.Spt.ln))
def optimized649 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(649, 2, optimizedBody649_61)
end InitECandidate.Proofs.SmallStages.Oracles649
