import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source564
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles564
def optimizedBody564_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody564_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody564_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody564_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody564_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody564_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody564_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody564_4 optimizedBody564_5

def optimizedBody564_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody564_3, 564, 2)) (some 472) ([2]) (some (2, optimizedBody564_6, 564, 3))

def optimizedBody564_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody564_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody564_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody564_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody564_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody564_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody564_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody564_3, 564, 4)) (some 479) ([2]) (some (2, optimizedBody564_6, 564, 5))

def optimizedBody564_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody564_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody564_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody564_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody564_17 optimizedBody564_5

def optimizedBody564_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody564_16, 564, 6)) (some 492) ([2]) (some (2, optimizedBody564_18, 564, 7))

def optimizedBody564_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody564_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody564_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody564_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody564_21 optimizedBody564_22

def optimizedBody564_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody564_20 optimizedBody564_23

def optimizedBody564_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody564_8 optimizedBody564_24

def optimizedBody564_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody564_19 optimizedBody564_25

def optimizedBody564_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody564_4 optimizedBody564_26

def optimizedBody564_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody564_15 optimizedBody564_27

def optimizedBody564_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody564_8 optimizedBody564_28

def optimizedBody564_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody564_14 optimizedBody564_29

def optimizedBody564_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody564_4 optimizedBody564_30

def optimizedBody564_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody564_13 optimizedBody564_31

def optimizedBody564_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody564_12 optimizedBody564_32

def optimizedBody564_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody564_11 optimizedBody564_33

def optimizedBody564_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody564_10 optimizedBody564_34

def optimizedBody564_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody564_9 optimizedBody564_35

def optimizedBody564_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody564_8 optimizedBody564_36

def optimizedBody564_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody564_7 optimizedBody564_37

def optimizedBody564_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody564_2 optimizedBody564_38

def optimizedBody564_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody564_1 optimizedBody564_39

def optimizedBody564_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody564_0 optimizedBody564_40

def oracle564 : Option (Spt Nat) :=
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
def optimized564 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(564, 1, optimizedBody564_41)
end InitECandidate.Proofs.SmallStages.Oracles564
