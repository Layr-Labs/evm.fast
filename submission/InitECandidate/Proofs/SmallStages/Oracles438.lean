import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source438
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles438
def optimizedBody438_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (6, 2), (4, 4)]

def optimizedBody438_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 24#64)

def optimizedBody438_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 6)]

def optimizedBody438_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody438_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody438_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody438_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_4 optimizedBody438_5

def optimizedBody438_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody438_3, 438, 2)) (some 74) ([2]) (some (2, optimizedBody438_6, 438, 3))

def optimizedBody438_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody438_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (46, 4)]

def optimizedBody438_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody438_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 8)]

def optimizedBody438_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (8, 44), (4, 46), (0, 48)]

def optimizedBody438_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (4, 46), (0, 48)]

def optimizedBody438_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_13 optimizedBody438_5

def optimizedBody438_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody438_12, 438, 4)) (some 74) ([2]) (some (2, optimizedBody438_14, 438, 5))

def optimizedBody438_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody438_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody438_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody438_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody438_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody438_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody438_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody438_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody438_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody438_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody438_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody438_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody438_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_26 optimizedBody438_27

def optimizedBody438_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_25 optimizedBody438_28

def optimizedBody438_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_24 optimizedBody438_29

def optimizedBody438_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_23 optimizedBody438_30

def optimizedBody438_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_18 optimizedBody438_31

def optimizedBody438_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_22 optimizedBody438_32

def optimizedBody438_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_21 optimizedBody438_33

def optimizedBody438_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_20 optimizedBody438_34

def optimizedBody438_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_19 optimizedBody438_35

def optimizedBody438_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_18 optimizedBody438_36

def optimizedBody438_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_17 optimizedBody438_37

def optimizedBody438_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_16 optimizedBody438_38

def optimizedBody438_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_8 optimizedBody438_39

def optimizedBody438_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_15 optimizedBody438_40

def optimizedBody438_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_11 optimizedBody438_41

def optimizedBody438_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_10 optimizedBody438_42

def optimizedBody438_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_9 optimizedBody438_43

def optimizedBody438_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_8 optimizedBody438_44

def optimizedBody438_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_7 optimizedBody438_45

def optimizedBody438_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_2 optimizedBody438_46

def optimizedBody438_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_1 optimizedBody438_47

def optimizedBody438_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody438_0 optimizedBody438_48

def oracle438 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 2
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
            2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln) 0
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)) 22 (Flapjack.Spt.ls 23)) 3
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 24 Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 Flapjack.Spt.ln) Flapjack.Spt.ln)))))
def optimized438 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(438, 3, optimizedBody438_49)
end InitECandidate.Proofs.SmallStages.Oracles438
