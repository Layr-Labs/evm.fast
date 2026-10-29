import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source561
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles561
def optimizedBody561_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody561_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody561_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody561_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody561_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody561_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody561_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_4 optimizedBody561_5

def optimizedBody561_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody561_3, 561, 2)) (some 472) ([2]) (some (2, optimizedBody561_6, 561, 3))

def optimizedBody561_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody561_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody561_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody561_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody561_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody561_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody561_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 96#64))

def optimizedBody561_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody561_3, 561, 4)) (some 479) ([2]) (some (2, optimizedBody561_6, 561, 5))

def optimizedBody561_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody561_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody561_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody561_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_18 optimizedBody561_5

def optimizedBody561_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody561_17, 561, 6)) (some 492) ([2]) (some (2, optimizedBody561_19, 561, 7))

def optimizedBody561_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody561_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody561_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody561_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_22 optimizedBody561_23

def optimizedBody561_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_21 optimizedBody561_24

def optimizedBody561_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_8 optimizedBody561_25

def optimizedBody561_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_20 optimizedBody561_26

def optimizedBody561_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_4 optimizedBody561_27

def optimizedBody561_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_16 optimizedBody561_28

def optimizedBody561_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_8 optimizedBody561_29

def optimizedBody561_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_15 optimizedBody561_30

def optimizedBody561_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_4 optimizedBody561_31

def optimizedBody561_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_14 optimizedBody561_32

def optimizedBody561_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_13 optimizedBody561_33

def optimizedBody561_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_12 optimizedBody561_34

def optimizedBody561_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_11 optimizedBody561_35

def optimizedBody561_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_10 optimizedBody561_36

def optimizedBody561_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_9 optimizedBody561_37

def optimizedBody561_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_8 optimizedBody561_38

def optimizedBody561_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_7 optimizedBody561_39

def optimizedBody561_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_2 optimizedBody561_40

def optimizedBody561_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_1 optimizedBody561_41

def optimizedBody561_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_0 optimizedBody561_42

def oracle561 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
          0
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22)) 1
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
def optimized561 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(561, 1, optimizedBody561_43)
end InitECandidate.Proofs.SmallStages.Oracles561
