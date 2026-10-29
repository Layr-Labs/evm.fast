import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source297
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles297
def optimizedBody297_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2)]

def optimizedBody297_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody297_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody297_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody297_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody297_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody297_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_4 optimizedBody297_5

def optimizedBody297_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody297_3, 297, 2)) (some 68) ([2]) (some (2, optimizedBody297_6, 297, 3))

def optimizedBody297_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody297_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody297_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody297_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody297_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody297_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody297_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody297_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody297_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody297_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody297_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody297_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody297_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody297_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody297_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_20 optimizedBody297_21

def optimizedBody297_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_19 optimizedBody297_22

def optimizedBody297_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_18 optimizedBody297_23

def optimizedBody297_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_17 optimizedBody297_24

def optimizedBody297_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_9 optimizedBody297_25

def optimizedBody297_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_15 optimizedBody297_26

def optimizedBody297_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_14 optimizedBody297_27

def optimizedBody297_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_13 optimizedBody297_28

def optimizedBody297_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_16 optimizedBody297_29

def optimizedBody297_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_9 optimizedBody297_30

def optimizedBody297_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_15 optimizedBody297_31

def optimizedBody297_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_14 optimizedBody297_32

def optimizedBody297_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_13 optimizedBody297_33

def optimizedBody297_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_12 optimizedBody297_34

def optimizedBody297_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_9 optimizedBody297_35

def optimizedBody297_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_11 optimizedBody297_36

def optimizedBody297_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_9 optimizedBody297_37

def optimizedBody297_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_10 optimizedBody297_38

def optimizedBody297_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_9 optimizedBody297_39

def optimizedBody297_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_8 optimizedBody297_40

def optimizedBody297_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_7 optimizedBody297_41

def optimizedBody297_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_2 optimizedBody297_42

def optimizedBody297_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_1 optimizedBody297_43

def optimizedBody297_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_0 optimizedBody297_44

def oracle297 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 4))
            (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))
          0
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln) 1
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 0)) 2
            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0)))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
def optimized297 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(297, 2, optimizedBody297_45)
end InitECandidate.Proofs.SmallStages.Oracles297
