import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source529
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles529
def optimizedBody529_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody529_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody529_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody529_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody529_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody529_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody529_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_4 optimizedBody529_5

def optimizedBody529_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody529_3, 529, 2)) (some 472) ([2]) (some (2, optimizedBody529_6, 529, 3))

def optimizedBody529_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody529_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody529_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody529_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody529_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody529_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody529_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody529_3, 529, 4)) (some 479) ([2]) (some (2, optimizedBody529_6, 529, 5))

def optimizedBody529_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody529_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody529_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody529_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_17 optimizedBody529_5

def optimizedBody529_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody529_16, 529, 6)) (some 492) ([2]) (some (2, optimizedBody529_18, 529, 7))

def optimizedBody529_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody529_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody529_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody529_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_21 optimizedBody529_22

def optimizedBody529_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_20 optimizedBody529_23

def optimizedBody529_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_8 optimizedBody529_24

def optimizedBody529_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_19 optimizedBody529_25

def optimizedBody529_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_4 optimizedBody529_26

def optimizedBody529_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_15 optimizedBody529_27

def optimizedBody529_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_8 optimizedBody529_28

def optimizedBody529_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_14 optimizedBody529_29

def optimizedBody529_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_4 optimizedBody529_30

def optimizedBody529_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_13 optimizedBody529_31

def optimizedBody529_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_12 optimizedBody529_32

def optimizedBody529_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_11 optimizedBody529_33

def optimizedBody529_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_10 optimizedBody529_34

def optimizedBody529_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_9 optimizedBody529_35

def optimizedBody529_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_8 optimizedBody529_36

def optimizedBody529_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_7 optimizedBody529_37

def optimizedBody529_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_2 optimizedBody529_38

def optimizedBody529_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_1 optimizedBody529_39

def optimizedBody529_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_0 optimizedBody529_40

def oracle529 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 0
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln) 1
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
          Flapjack.Spt.ln))))
def optimized529 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(529, 1, optimizedBody529_41)
end InitECandidate.Proofs.SmallStages.Oracles529
