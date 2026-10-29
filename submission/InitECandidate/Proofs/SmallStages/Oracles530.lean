import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source530
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles530
def optimizedBody530_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody530_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody530_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody530_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody530_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody530_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody530_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_4 optimizedBody530_5

def optimizedBody530_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody530_3, 530, 2)) (some 472) ([2]) (some (2, optimizedBody530_6, 530, 3))

def optimizedBody530_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody530_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody530_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody530_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody530_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody530_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 64#64))

def optimizedBody530_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody530_3, 530, 4)) (some 479) ([2]) (some (2, optimizedBody530_6, 530, 5))

def optimizedBody530_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody530_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody530_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody530_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_17 optimizedBody530_5

def optimizedBody530_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody530_16, 530, 6)) (some 492) ([2]) (some (2, optimizedBody530_18, 530, 7))

def optimizedBody530_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody530_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody530_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody530_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_21 optimizedBody530_22

def optimizedBody530_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_20 optimizedBody530_23

def optimizedBody530_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_8 optimizedBody530_24

def optimizedBody530_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_19 optimizedBody530_25

def optimizedBody530_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_4 optimizedBody530_26

def optimizedBody530_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_15 optimizedBody530_27

def optimizedBody530_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_8 optimizedBody530_28

def optimizedBody530_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_14 optimizedBody530_29

def optimizedBody530_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_4 optimizedBody530_30

def optimizedBody530_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_13 optimizedBody530_31

def optimizedBody530_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_12 optimizedBody530_32

def optimizedBody530_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_11 optimizedBody530_33

def optimizedBody530_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_10 optimizedBody530_34

def optimizedBody530_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_9 optimizedBody530_35

def optimizedBody530_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_8 optimizedBody530_36

def optimizedBody530_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_7 optimizedBody530_37

def optimizedBody530_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_2 optimizedBody530_38

def optimizedBody530_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_1 optimizedBody530_39

def optimizedBody530_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody530_0 optimizedBody530_40

def oracle530 : Option (Spt Nat) :=
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
def optimized530 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(530, 1, optimizedBody530_41)
end InitECandidate.Proofs.SmallStages.Oracles530
