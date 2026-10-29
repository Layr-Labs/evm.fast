import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source566
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles566
def optimizedBody566_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody566_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody566_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody566_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody566_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody566_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody566_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_4 optimizedBody566_5

def optimizedBody566_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody566_3, 566, 2)) (some 472) ([2]) (some (2, optimizedBody566_6, 566, 3))

def optimizedBody566_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody566_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody566_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody566_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody566_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody566_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody566_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody566_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody566_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody566_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody566_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 64#64))

def optimizedBody566_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 72#64))

def optimizedBody566_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody566_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody566_3, 566, 4)) (some 478) ([2, 4, 6, 8]) (some (2, optimizedBody566_6, 566, 5))

def optimizedBody566_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody566_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody566_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody566_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_24 optimizedBody566_5

def optimizedBody566_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody566_23, 566, 6)) (some 492) ([2]) (some (2, optimizedBody566_25, 566, 7))

def optimizedBody566_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody566_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody566_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody566_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_28 optimizedBody566_29

def optimizedBody566_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_27 optimizedBody566_30

def optimizedBody566_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_8 optimizedBody566_31

def optimizedBody566_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_26 optimizedBody566_32

def optimizedBody566_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_4 optimizedBody566_33

def optimizedBody566_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_22 optimizedBody566_34

def optimizedBody566_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_8 optimizedBody566_35

def optimizedBody566_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_21 optimizedBody566_36

def optimizedBody566_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_20 optimizedBody566_37

def optimizedBody566_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_19 optimizedBody566_38

def optimizedBody566_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_15 optimizedBody566_39

def optimizedBody566_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_18 optimizedBody566_40

def optimizedBody566_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_15 optimizedBody566_41

def optimizedBody566_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_17 optimizedBody566_42

def optimizedBody566_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_15 optimizedBody566_43

def optimizedBody566_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_16 optimizedBody566_44

def optimizedBody566_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_15 optimizedBody566_45

def optimizedBody566_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_14 optimizedBody566_46

def optimizedBody566_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_13 optimizedBody566_47

def optimizedBody566_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_12 optimizedBody566_48

def optimizedBody566_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_11 optimizedBody566_49

def optimizedBody566_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_10 optimizedBody566_50

def optimizedBody566_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_9 optimizedBody566_51

def optimizedBody566_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_8 optimizedBody566_52

def optimizedBody566_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_7 optimizedBody566_53

def optimizedBody566_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_2 optimizedBody566_54

def optimizedBody566_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_1 optimizedBody566_55

def optimizedBody566_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_0 optimizedBody566_56

def oracle566 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 0)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 22 (Flapjack.Spt.ls 0))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 (Flapjack.Spt.ls 0)) 1
            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))
            0 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
def optimized566 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(566, 1, optimizedBody566_57)
end InitECandidate.Proofs.SmallStages.Oracles566
