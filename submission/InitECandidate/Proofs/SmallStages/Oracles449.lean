import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source449
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles449
def optimizedBody449_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2)]

def optimizedBody449_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody449_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody449_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody449_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551440#64))

def optimizedBody449_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody449_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4)]

def optimizedBody449_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (8, 44), (6, 46)]

def optimizedBody449_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (6, 46)]

def optimizedBody449_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody449_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_8 optimizedBody449_9

def optimizedBody449_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody449_7, 449, 2)) (some 186) ([2, 4]) (some (2, optimizedBody449_10, 449, 3))

def optimizedBody449_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody449_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody449_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody449_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody449_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody449_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_15 optimizedBody449_16

def optimizedBody449_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_12 optimizedBody449_17

def optimizedBody449_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody449_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody449_18 optimizedBody449_19

def optimizedBody449_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (44, 8), (46, 6)]

def optimizedBody449_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody449_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody449_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_23 optimizedBody449_9

def optimizedBody449_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody449_22, 449, 4)) (some 398) ([2]) (some (2, optimizedBody449_24, 449, 5))

def optimizedBody449_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody449_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody449_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody449_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_28 optimizedBody449_9

def optimizedBody449_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody449_27, 449, 6)) (some 400) ([2]) (some (2, optimizedBody449_29, 449, 7))

def optimizedBody449_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody449_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_15 optimizedBody449_31

def optimizedBody449_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_12 optimizedBody449_32

def optimizedBody449_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_30 optimizedBody449_33

def optimizedBody449_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_26 optimizedBody449_34

def optimizedBody449_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_12 optimizedBody449_35

def optimizedBody449_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_25 optimizedBody449_36

def optimizedBody449_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_21 optimizedBody449_37

def optimizedBody449_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_12 optimizedBody449_38

def optimizedBody449_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_12 optimizedBody449_39

def optimizedBody449_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_20 optimizedBody449_40

def optimizedBody449_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_14 optimizedBody449_41

def optimizedBody449_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_13 optimizedBody449_42

def optimizedBody449_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_12 optimizedBody449_43

def optimizedBody449_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_11 optimizedBody449_44

def optimizedBody449_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_6 optimizedBody449_45

def optimizedBody449_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_5 optimizedBody449_46

def optimizedBody449_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_4 optimizedBody449_47

def optimizedBody449_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_3 optimizedBody449_48

def optimizedBody449_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_2 optimizedBody449_49

def optimizedBody449_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_1 optimizedBody449_50

def optimizedBody449_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_0 optimizedBody449_51

def oracle449 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 4
              (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
            1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 2 (Flapjack.Spt.ls 1)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 1
            (Flapjack.Spt.ls 1))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 3)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 23 Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            Flapjack.Spt.ln)))))
def optimized449 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(449, 2, optimizedBody449_52)
end InitECandidate.Proofs.SmallStages.Oracles449
