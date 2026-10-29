import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source558
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles558
def optimizedBody558_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody558_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody558_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody558_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody558_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody558_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody558_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody558_4 optimizedBody558_5

def optimizedBody558_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody558_3, 558, 2)) (some 472) ([2]) (some (2, optimizedBody558_6, 558, 3))

def optimizedBody558_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody558_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody558_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody558_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody558_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody558_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody558_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody558_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 6), (0, 2), (8, 8), (44, 44)]

def optimizedBody558_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody558_15, 558, 4)) (some 469) ([2]) (some (2, optimizedBody558_6, 558, 5))

def optimizedBody558_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody558_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody558_3, 558, 6)) (some 478) ([2, 4, 6, 8]) (some (2, optimizedBody558_6, 558, 7))

def optimizedBody558_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody558_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody558_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody558_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody558_21 optimizedBody558_5

def optimizedBody558_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody558_20, 558, 8)) (some 492) ([2]) (some (2, optimizedBody558_22, 558, 9))

def optimizedBody558_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody558_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody558_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody558_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody558_25 optimizedBody558_26

def optimizedBody558_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody558_24 optimizedBody558_27

def optimizedBody558_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody558_8 optimizedBody558_28

def optimizedBody558_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody558_23 optimizedBody558_29

def optimizedBody558_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody558_4 optimizedBody558_30

def optimizedBody558_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody558_19 optimizedBody558_31

def optimizedBody558_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody558_8 optimizedBody558_32

def optimizedBody558_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody558_18 optimizedBody558_33

def optimizedBody558_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody558_17 optimizedBody558_34

def optimizedBody558_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody558_8 optimizedBody558_35

def optimizedBody558_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody558_16 optimizedBody558_36

def optimizedBody558_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody558_4 optimizedBody558_37

def optimizedBody558_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody558_14 optimizedBody558_38

def optimizedBody558_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody558_13 optimizedBody558_39

def optimizedBody558_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody558_12 optimizedBody558_40

def optimizedBody558_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody558_11 optimizedBody558_41

def optimizedBody558_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody558_10 optimizedBody558_42

def optimizedBody558_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody558_9 optimizedBody558_43

def optimizedBody558_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody558_8 optimizedBody558_44

def optimizedBody558_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody558_7 optimizedBody558_45

def optimizedBody558_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody558_2 optimizedBody558_46

def optimizedBody558_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody558_1 optimizedBody558_47

def optimizedBody558_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody558_0 optimizedBody558_48

def oracle558 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22)) 1
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln) 0
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 2)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
            (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))))
def optimized558 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(558, 1, optimizedBody558_49)
end InitECandidate.Proofs.SmallStages.Oracles558
