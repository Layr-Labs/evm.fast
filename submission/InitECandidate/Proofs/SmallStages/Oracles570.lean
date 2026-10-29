import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source570
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles570
def optimizedBody570_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody570_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody570_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody570_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody570_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody570_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody570_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_4 optimizedBody570_5

def optimizedBody570_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody570_3, 570, 2)) (some 472) ([2]) (some (2, optimizedBody570_6, 570, 3))

def optimizedBody570_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody570_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody570_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody570_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody570_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody570_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 152#64))

def optimizedBody570_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody570_3, 570, 4)) (some 479) ([2]) (some (2, optimizedBody570_6, 570, 5))

def optimizedBody570_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody570_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody570_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody570_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_17 optimizedBody570_5

def optimizedBody570_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody570_16, 570, 6)) (some 492) ([2]) (some (2, optimizedBody570_18, 570, 7))

def optimizedBody570_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody570_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody570_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody570_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_21 optimizedBody570_22

def optimizedBody570_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_20 optimizedBody570_23

def optimizedBody570_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_8 optimizedBody570_24

def optimizedBody570_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_19 optimizedBody570_25

def optimizedBody570_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_4 optimizedBody570_26

def optimizedBody570_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_15 optimizedBody570_27

def optimizedBody570_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_8 optimizedBody570_28

def optimizedBody570_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_14 optimizedBody570_29

def optimizedBody570_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_4 optimizedBody570_30

def optimizedBody570_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_13 optimizedBody570_31

def optimizedBody570_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_12 optimizedBody570_32

def optimizedBody570_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_11 optimizedBody570_33

def optimizedBody570_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_10 optimizedBody570_34

def optimizedBody570_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_9 optimizedBody570_35

def optimizedBody570_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_8 optimizedBody570_36

def optimizedBody570_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_7 optimizedBody570_37

def optimizedBody570_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_2 optimizedBody570_38

def optimizedBody570_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_1 optimizedBody570_39

def optimizedBody570_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_0 optimizedBody570_40

def oracle570 : Option (Spt Nat) :=
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
def optimized570 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(570, 1, optimizedBody570_41)
end InitECandidate.Proofs.SmallStages.Oracles570
