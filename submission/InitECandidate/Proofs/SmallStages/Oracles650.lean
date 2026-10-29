import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source650
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles650
def optimizedBody650_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (10, 10), (8, 8), (6, 6), (0, 0), (12, 12), (14, 14), (16, 16), (18, 18)]

def optimizedBody650_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody650_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody650_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody650_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody650_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody650_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody650_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody650_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody650_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody650_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (12, 12), (18, 18), (16, 16), (14, 14)]

def optimizedBody650_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody650_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (14, 14)]

def optimizedBody650_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody650_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (16, 16)]

def optimizedBody650_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody650_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (18, 18)]

def optimizedBody650_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody650_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody650_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody650_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody650_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody650_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody650_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody650_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody650_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody650_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_8 optimizedBody650_25

def optimizedBody650_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_24 optimizedBody650_26

def optimizedBody650_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_23 optimizedBody650_27

def optimizedBody650_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_8 optimizedBody650_28

def optimizedBody650_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_20 optimizedBody650_29

def optimizedBody650_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_22 optimizedBody650_30

def optimizedBody650_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_8 optimizedBody650_31

def optimizedBody650_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_20 optimizedBody650_32

def optimizedBody650_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_21 optimizedBody650_33

def optimizedBody650_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_8 optimizedBody650_34

def optimizedBody650_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_20 optimizedBody650_35

def optimizedBody650_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_1 optimizedBody650_36

def optimizedBody650_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_8 optimizedBody650_37

def optimizedBody650_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_19 optimizedBody650_38

def optimizedBody650_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_18 optimizedBody650_39

def optimizedBody650_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_8 optimizedBody650_40

def optimizedBody650_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_17 optimizedBody650_41

def optimizedBody650_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_16 optimizedBody650_42

def optimizedBody650_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_15 optimizedBody650_43

def optimizedBody650_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_14 optimizedBody650_44

def optimizedBody650_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_13 optimizedBody650_45

def optimizedBody650_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_12 optimizedBody650_46

def optimizedBody650_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_11 optimizedBody650_47

def optimizedBody650_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_10 optimizedBody650_48

def optimizedBody650_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_9 optimizedBody650_49

def optimizedBody650_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_8 optimizedBody650_50

def optimizedBody650_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_7 optimizedBody650_51

def optimizedBody650_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_6 optimizedBody650_52

def optimizedBody650_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_5 optimizedBody650_53

def optimizedBody650_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_4 optimizedBody650_54

def optimizedBody650_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_3 optimizedBody650_55

def optimizedBody650_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_2 optimizedBody650_56

def optimizedBody650_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_1 optimizedBody650_57

def optimizedBody650_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody650_0 optimizedBody650_58

def oracle650 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 9))) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 7 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 7)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 (Flapjack.Spt.ls 9))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 8))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.ls 6)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.ls 8)) (Flapjack.Spt.ls 9))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 6
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 9)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 2)) 0
              (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 2))))))
      Flapjack.Spt.ln))
def optimized650 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(650, 10, optimizedBody650_59)
end InitECandidate.Proofs.SmallStages.Oracles650
