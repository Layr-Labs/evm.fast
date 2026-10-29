import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source454
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles454
def optimizedBody454_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (10, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody454_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody454_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody454_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody454_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551400#64))

def optimizedBody454_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 10), (44, 0), (46, 8), (48, 4), (50, 6)]

def optimizedBody454_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (4, 4), (12, 44), (6, 46), (8, 48), (0, 50)]

def optimizedBody454_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (6, 46), (8, 48), (0, 50)]

def optimizedBody454_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody454_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_7 optimizedBody454_8

def optimizedBody454_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody454_6, 454, 2)) (some 186) ([2, 4]) (some (2, optimizedBody454_9, 454, 3))

def optimizedBody454_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody454_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody454_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody454_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody454_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2]

def optimizedBody454_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_14 optimizedBody454_15

def optimizedBody454_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_13 optimizedBody454_16

def optimizedBody454_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_17

def optimizedBody454_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody454_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 2) optimizedBody454_18 optimizedBody454_19

def optimizedBody454_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody454_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.reg 4)))

def optimizedBody454_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody454_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 0), (6, 6), (44, 12)]

def optimizedBody454_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody454_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody454_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_26 optimizedBody454_8

def optimizedBody454_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody454_25, 454, 4)) (some 453) ([2, 4, 6]) (some (2, optimizedBody454_27, 454, 5))

def optimizedBody454_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody454_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_14 optimizedBody454_29

def optimizedBody454_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_13 optimizedBody454_30

def optimizedBody454_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_31

def optimizedBody454_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_28 optimizedBody454_32

def optimizedBody454_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_24 optimizedBody454_33

def optimizedBody454_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_23 optimizedBody454_34

def optimizedBody454_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_22 optimizedBody454_35

def optimizedBody454_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_21 optimizedBody454_36

def optimizedBody454_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_37

def optimizedBody454_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_38

def optimizedBody454_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_20 optimizedBody454_39

def optimizedBody454_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_13 optimizedBody454_40

def optimizedBody454_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_12 optimizedBody454_41

def optimizedBody454_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_42

def optimizedBody454_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_10 optimizedBody454_43

def optimizedBody454_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_5 optimizedBody454_44

def optimizedBody454_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_4 optimizedBody454_45

def optimizedBody454_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_3 optimizedBody454_46

def optimizedBody454_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_2 optimizedBody454_47

def optimizedBody454_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_1 optimizedBody454_48

def optimizedBody454_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_0 optimizedBody454_49

def oracle454 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 4)) 5
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1 (Flapjack.Spt.ls 6))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 3
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)) 0
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 4 Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 1 Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))))
def optimized454 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(454, 5, optimizedBody454_50)
end InitECandidate.Proofs.SmallStages.Oracles454
