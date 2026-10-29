import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source741
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles741
def optimizedBody741_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody741_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody741_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody741_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody741_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody741_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody741_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody741_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody741_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody741_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody741_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody741_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody741_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody741_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_2 optimizedBody741_12

def optimizedBody741_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_11 optimizedBody741_13

def optimizedBody741_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_9 optimizedBody741_14

def optimizedBody741_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_2 optimizedBody741_15

def optimizedBody741_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_4 optimizedBody741_16

def optimizedBody741_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_8 optimizedBody741_17

def optimizedBody741_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_2 optimizedBody741_18

def optimizedBody741_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_4 optimizedBody741_19

def optimizedBody741_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_7 optimizedBody741_20

def optimizedBody741_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_2 optimizedBody741_21

def optimizedBody741_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_4 optimizedBody741_22

def optimizedBody741_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_6 optimizedBody741_23

def optimizedBody741_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_2 optimizedBody741_24

def optimizedBody741_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_4 optimizedBody741_25

def optimizedBody741_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_5 optimizedBody741_26

def optimizedBody741_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_2 optimizedBody741_27

def optimizedBody741_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_4 optimizedBody741_28

def optimizedBody741_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_3 optimizedBody741_29

def optimizedBody741_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_2 optimizedBody741_30

def optimizedBody741_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_4 optimizedBody741_31

def optimizedBody741_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_10 optimizedBody741_32

def optimizedBody741_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_2 optimizedBody741_33

def optimizedBody741_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_9 optimizedBody741_34

def optimizedBody741_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_2 optimizedBody741_35

def optimizedBody741_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_4 optimizedBody741_36

def optimizedBody741_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_8 optimizedBody741_37

def optimizedBody741_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_2 optimizedBody741_38

def optimizedBody741_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_4 optimizedBody741_39

def optimizedBody741_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_7 optimizedBody741_40

def optimizedBody741_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_2 optimizedBody741_41

def optimizedBody741_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_4 optimizedBody741_42

def optimizedBody741_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_6 optimizedBody741_43

def optimizedBody741_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_2 optimizedBody741_44

def optimizedBody741_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_4 optimizedBody741_45

def optimizedBody741_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_5 optimizedBody741_46

def optimizedBody741_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_2 optimizedBody741_47

def optimizedBody741_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_4 optimizedBody741_48

def optimizedBody741_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_3 optimizedBody741_49

def optimizedBody741_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_2 optimizedBody741_50

def optimizedBody741_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_1 optimizedBody741_51

def optimizedBody741_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_0 optimizedBody741_52

def oracle741 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))) 1
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
            0 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 1))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 2
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 2)))))
      Flapjack.Spt.ln))
def optimized741 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(741, 2, optimizedBody741_53)
end InitECandidate.Proofs.SmallStages.Oracles741
